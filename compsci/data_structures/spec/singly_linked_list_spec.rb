require 'spec_helper'
require_relative '../singly_linked_list.rb'


describe SinglyLinkedList do
  before do
    @bros = SinglyLinkedList.new('groucho')
  end

  describe 'prepend' do
    before do
      @bros.prepend('chico')
    end 
    it 'adds a node to the beginning of the array' do
      expect(@bros.head.value).to eq 'chico'
    end
  end 

  describe 'last' do
    before do 
      @bros.prepend('chico').prepend('harpo').prepend('zappo').prepend('first')
    end 
    it 'gets the last element in the "array"' do 
      expect(@bros.last.value).to eq 'groucho'
    end
  end 

  describe 'insertAfter' do
    before do
      @bros.insertAfter('first', 'new')
    end  
    it 'inserts a node with value new after the specified node first' do
      expect(@bros.head.next.value).to eq 'new'
    end
  end 

  describe 'append' do
    before do 
      @bros.append('new_last')
    end
    it 'adds a node after the last element' do 
      expect(@bros.last.value).to eq 'new_last'
    end
  end 

  describe 'remove' do
    before do 
      @bros = SinglyLinkedList.new('groucho').prepend('first')
    end

    it 'removes the first and returns its value' do
      expect(@bros.remove).to eq 'first' 
    end
  end 

  describe 'length' do
    before do 
      @bros.prepend('chico').prepend('harpo').prepend('zappo').prepend('first')
    end

    it 'counts the number of items in the "array"' do
      expect(@bros.length).to eq 5
    end
  end

  describe 'find' do
    before do 
       @bros = SinglyLinkedList.new('groucho').prepend('chico').prepend('harpo').prepend('zappo').prepend('first')
     end 
    it 'finds the node you want and returns the node' do 
      expect(@bros.find('zappo').value).to eq 'zappo'
    end
  end 

  describe 'reverse' do
    before do 
     @bros = SinglyLinkedList.new('last').prepend('second').prepend('first')
     end  
    it 'should give me "last" as the last element before the reverse' do
      expect(@bros.last.value).to eq 'last'
    end
    it 'should give me "first" as the last element with the reverse' do
      expect(@bros.reverse.last.value).to eq 'first'
    end
    it 'should give me "last" as the last element after the reverse' do
      expect(@bros.last.value).to eq 'last'
    end
  end

  describe 'reverse!' do
    before do 
     @bros = SinglyLinkedList.new('last').prepend('second').prepend('first')
     @bros.reverse!
     end  
    it 'should give me "first" as the last element' do
      expect(@bros.last.value).to eq 'first'
    end
  end

  describe 'to_s' do
    before do 
      @bros = SinglyLinkedList.new('last').prepend('second').prepend('first')
    end
    it 'converts the "array" to a string' do 
      expect(@bros.to_s).to eq 'My value is first. My value is second. My value is last. '
    end
  end
end 























