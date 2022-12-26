import { Typography } from 'antd';

const { Text, Title } = Typography;

const App = () => {
  return (
    <div className="App">
      <Title level={1} style={{fontFamily: 'cinzel,serif'}}>
        Main Header
      </Title>
      <Title level={2}>
        Sub Header
      </Title>
      <Text>
        This is some text about the site.
      </Text>
    </div>
  );
}

export default App;
