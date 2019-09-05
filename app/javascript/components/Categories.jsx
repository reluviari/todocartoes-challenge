import React from 'react';
import ItemsCarousel from 'react-items-carousel';
import { Card, Icon, Image } from 'semantic-ui-react'

export default class Categories extends React.Component {

	componentWillMount() {
		this.setState({
			children: [],
			activeItemIndex: 0,
		});
	}

	changeActiveItem = (activeItemIndex) => this.setState({ activeItemIndex });

	render() {
		return (
			<div style={{ "padding": "0 60px", "maxWidth": 1200, "margin": "0 auto" }}>
				<ItemsCarousel
					gutter={15}
					activePosition={'center'}
					chevronWidth={80}
					numberOfCards={3}
					slidesToScroll={2}
					outsideChevron={false}
					showSlither={true}
					firstAndLastGutter={true}
					activeItemIndex={this.state.activeItemIndex}
					requestToChangeActive={value => this.setState({ activeItemIndex: value })}
					rightChevron={<button className="ui medium circular icon button"><i aria-hidden="true" className="orange arrow circle right icon"></i>{''}</button>}
					leftChevron={<button className="ui medium circular icon button"><i aria-hidden="true" className="orange arrow circle left icon"></i>{''}</button>}
				>

					<div>
						<Card>
							<Image src='http://lorempixel.com/400/200/sports/' wrapped ui={false} />
							<Card.Content>
								<Card.Header textAlign='center'>Games</Card.Header>
								<Card.Meta textAlign='center'>
									<span className='date'>76 Itens</span>
								</Card.Meta>
							</Card.Content>
							<Card.Content extra textAlign='center'>
								<a> <Icon name='orange search' /> Ver Produtos </a>
							</Card.Content>
						</Card>
						<br />
					</div>
					<div>
						<Card>
							<Image src='http://lorempixel.com/400/200/fashion/' wrapped ui={false} />
							<Card.Content>
								<Card.Header textAlign='center'>Brinquedos</Card.Header>
								<Card.Meta textAlign='center'>
									<span className='date'>157 Itens</span>
								</Card.Meta>
							</Card.Content>
							<Card.Content extra textAlign='center'>
								<a> <Icon name='orange search' /> Ver Produtos </a>
							</Card.Content>
						</Card>
						<br />
					</div>
					<div>
						<Card>
							<Image src='http://lorempixel.com/400/200/technics/' wrapped ui={false} />
							<Card.Content>
								<Card.Header textAlign='center'>Moda Bebê</Card.Header>
								<Card.Meta textAlign='center'>
									<span className='date'>87 Itens</span>
								</Card.Meta>
							</Card.Content>
							<Card.Content extra textAlign='center'>
								<a> <Icon name='orange search' /> Ver Produtos </a>
							</Card.Content>
						</Card>
						<br />
					</div>
					<div>
						<Card>
							<Image src='http://lorempixel.com/400/200/nature/' wrapped ui={false} />
							<Card.Content>
								<Card.Header textAlign='center'>Eletrônicos</Card.Header>
								<Card.Meta textAlign='center'>
									<span className='date'>77View Itens</span>
								</Card.Meta>
							</Card.Content>
							<Card.Content extra textAlign='center'>
								<a> <Icon name='orange search' /> Ver Produtos </a>
							</Card.Content>
						</Card>
						<br />
					</div>
					<div>
						<Card>
							<Image src='http://lorempixel.com/400/200/city/' wrapped ui={false} />
							<Card.Content>
								<Card.Header textAlign='center'>Hora do Banho</Card.Header>
								<Card.Meta textAlign='center'>
									<span className='date'>58 Itens</span>
								</Card.Meta>
							</Card.Content>
							<Card.Content extra textAlign='center'>
								<a> <Icon name='orange search' /> Ver Produtos </a>
							</Card.Content>
						</Card>
						<br />
					</div>
					<div>
						<Card>
							<Image src='http://lorempixel.com/400/200/sports/' wrapped ui={false} />
							<Card.Content>
								<Card.Header textAlign='center'>Trocando a Fralda</Card.Header>
								<Card.Meta textAlign='center'>
									<span className='date'>23 Itens</span>
								</Card.Meta>
							</Card.Content>
							<Card.Content extra textAlign='center'>
								<a> <Icon name='orange search' /> Ver Produtos </a>
							</Card.Content>
						</Card>
						<br />
					</div>
					<div>
						<Card>
							<Image src='http://lorempixel.com/400/200/fashion/' wrapped ui={false} />
							<Card.Content>
								<Card.Header textAlign='center'>Sou Princesa</Card.Header>
								<Card.Meta textAlign='center'>
									<span className='date'>15 Itens</span>
								</Card.Meta>
							</Card.Content>
							<Card.Content extra textAlign='center'>
								<a> <Icon name='orange search' /> Ver Produtos </a>
							</Card.Content>
						</Card>
						<br />
					</div>
					<div>
						<Card>
							<Image src='http://lorempixel.com/400/200/technics/' wrapped ui={false} />
							<Card.Content>
								<Card.Header textAlign='center'>Os Mais Queridos</Card.Header>
								<Card.Meta textAlign='center'>
									<span className='date'>35 Itens</span>
								</Card.Meta>
							</Card.Content>
							<Card.Content extra textAlign='center'>
								<a> <Icon name='orange search' /> Ver Produtos </a>
							</Card.Content>
						</Card>
						<br />
					</div>
					<div>
						<Card>
							<Image src='http://lorempixel.com/400/200/nature/' wrapped ui={false} />
							<Card.Content>
								<Card.Header textAlign='center'>Mini Veículo e Cia</Card.Header>
								<Card.Meta textAlign='center'>
									<span className='date'>13 Itens</span>
								</Card.Meta>
							</Card.Content>
							<Card.Content extra textAlign='center'>
								<a> <Icon name='orange search' /> Ver Produtos </a>
							</Card.Content>
						</Card>
						<br />
					</div>
					<div>
						<Card>
							<Image src='http://lorempixel.com/400/200/city/' wrapped ui={false} />
							<Card.Content>
								<Card.Header textAlign='center'>Quarto e Decoração</Card.Header>
								<Card.Meta textAlign='center'>
									<span className='date'>18 Itens</span>
								</Card.Meta>
							</Card.Content>
							<Card.Content extra textAlign='center'>
								<a> <Icon name='orange search' /> Ver Produtos </a>
							</Card.Content>
						</Card>
						<br />
					</div>

				</ItemsCarousel>
			</div>
		);
	}
} 